# Description

## Models

* Upload -- hold name and has many uploaded files. Already generated or not status. Parsing now status. Order. And Output file.
* UploadFile -- hold uploaded files and file_format (csv/json).

## Flow

### Create upload

```
POST /api/uploads
```

### Upload files

```
POST /api/uploads/1/upload_files
```

### Sort uploaded files (in background)

```
POST /api/uploads/1/sorts
```

### Check status of upload

```
GET /api/uploads/2
```

Sample output (formatted):

```
$ curl http://localhost:3000/api/uploads/2
{"id":2,"name":"Kacy Halvorson","generated":true,"parsing_now":false,
"output_file_url":"/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b54637a8159b7efd9d8dc6b356c10e4d48be69ae/output.csv?disposition=attachment"}
$ 
```
