local storageEndpoint = 'localhost:8980';

{
  client_blobstore: {
    contentAddressableStorage: {
      grpc: {
        endpoint: storageEndpoint,
      },
    },
    actionCache: {
      grpc: {
        endpoint: storageEndpoint,
      },
    },
  },
  server_blobstore: {
    contentAddressableStorage: {
      circular: {
        directory: 'storage-cas',
        offsetFileSizeBytes: 16777216,
        offsetCacheSize: 10000,
        dataFileSizeBytes: 10737418240,
        dataAllocationChunkSizeBytes: 16777216,
      },
    },
    actionCache: {
      circular: {
        directory: 'storage-ac',
        offsetFileSizeBytes: 1048576,
        offsetCacheSize: 1000,
        dataFileSizeBytes: 104857600,
        dataAllocationChunkSizeBytes: 1048576,
        instance: ['bb-event-service', 'local'],
      },
    },
  },
}
