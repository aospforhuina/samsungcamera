.class public Lcom/sec/android/app/camera/cropper/controller/SaveTask;
.super Landroid/os/AsyncTask;
.source "SaveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

.field private final mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

.field private final mExternalSDStoragePath:Ljava/lang/String;

.field private final mIsObjectRemovalEnabled:Z

.field private final mOriginalImagePath:Ljava/lang/String;

.field private mSavingDir:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mOriginalImagePath:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mUri:Landroid/net/Uri;

    .line 5
    iput-object p6, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 6
    iput-object p4, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mExternalSDStoragePath:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    .line 9
    iput-boolean p8, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mIsObjectRemovalEnabled:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getPolygonPointList()Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mIsObjectRemovalEnabled:Z

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Lcom/sec/android/app/camera/cropper/controller/SmartScanRectifyWrapper;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "SaveTask"

    if-nez p1, :cond_0

    const-string p0, "doInBackground : bitmap is null, return."

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isNonDestruction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mOriginalImagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->saveImageForNonDestruction(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mOriginalImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    const-string p1, "doInBackground : fail to save image."

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "SaveTask"

    const-string v1, "onPostExecute in SaveTask"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isNonDestruction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mOriginalImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->deleteImage(Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onSaveCompleted(Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onSaveFailed(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onSaveStarted()V

    return-void
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mExternalSDStoragePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->isSdStoragePath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v10, "SaveTask"

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mExternalSDStoragePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getSdStorageVolumeFsUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getSdStorageVolumePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v0, "saveImage : sdStorageVolumeFsUuid is null, return."

    .line 5
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mExternalSDStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->createDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "saveImage : Failed to create directory"

    .line 8
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->createFileName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 11
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mSavingDir:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mExternalSDStoragePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->isSdStoragePath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mExternalSDStoragePath:Ljava/lang/String;

    move-wide v3, v8

    move-object/from16 v5, p1

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->insertToDbWithSdStorage(Landroid/content/ContentResolver;Landroid/content/ContentValues;JLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-wide v3, v8

    move-object/from16 v5, p1

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->insertToDb(Landroid/content/ContentResolver;Landroid/content/ContentValues;JLandroid/graphics/Bitmap;Ljava/lang/String;)Landroidx/core/util/Pair;

    move-result-object v1

    :goto_0
    move-object v13, v1

    if-nez v13, :cond_4

    const-string v0, "saveImage : Uri is null, return."

    .line 14
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 15
    :cond_4
    :try_start_0
    new-instance v14, Landroidx/exifinterface/media/ExifInterface;

    move-object/from16 v1, p2

    invoke-direct {v14, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v13, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v15, p1

    invoke-static {v1, v2, v15}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->writeImageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "saveImage : Failed to write image to uri."

    .line 17
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 18
    :cond_5
    new-instance v4, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v4, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 19
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v13, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->getOrientationWithUri(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v5

    .line 20
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v13, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    move-object v3, v14

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/camera/cropper/util/ExifUtil;->addExif(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/exifinterface/media/ExifInterface;Landroid/util/Size;IJ)V

    .line 21
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, v13, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    const-wide/16 v4, 0x3e8

    div-long v6, v8, v4

    move-wide v4, v8

    move-object/from16 v8, p1

    move-object v9, v12

    move-object v10, v14

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->updateToDb(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;JJLandroid/graphics/Bitmap;Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface;)V

    const/16 v1, 0xb90

    const-string v2, "Document_Scan_Info"

    .line 22
    invoke-static {v12, v2, v2, v1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->addSef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    invoke-static {v0, v1, v11, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 24
    iget-object v0, v13, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :catch_0
    const-string v0, "saveImage : failed to init exif data. ignore exif info."

    .line 25
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method public saveImageForNonDestruction(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->createFileName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v4, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-wide v6, v10

    move-object/from16 v8, p1

    move-object v9, v2

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->insertToDb(Landroid/content/ContentResolver;Landroid/content/ContentValues;JLandroid/graphics/Bitmap;Ljava/lang/String;)Landroidx/core/util/Pair;

    move-result-object v13

    const-string v4, "SaveTask"

    if-nez v13, :cond_0

    const-string v0, "saveImageForNonDestruction : Uri is null, return."

    .line 5
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p1

    invoke-static {v8, v5, v6}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->writeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "saveImageForNonDestruction : Failed to write image to file."

    .line 7
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 8
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getDateModified(Ljava/lang/String;)J

    move-result-wide v6

    .line 9
    :try_start_0
    new-instance v14, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v14, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->saveHiddenOriginal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 11
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->delete(Ljava/lang/String;)Z

    const-string v0, "saveImageForNonDestruction : Failed to create hidden image"

    .line 12
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_2
    const/4 v15, 0x1

    .line 13
    invoke-static {v2, v1, v15}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v0, "saveImageForNonDestruction : Failed to move image to file."

    .line 14
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->delete(Ljava/lang/String;)Z

    return-object v12

    .line 16
    :cond_3
    iget-object v4, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->insertNonDestructionDataToDb(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 17
    invoke-static {v5, v1}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->addNonDestructionDataToSef(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19
    iget-object v2, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v1, v9}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->renameAndUpdate(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 21
    iget-object v2, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v1, v4}, Lcom/sec/android/app/camera/cropper/util/ExifUtil;->addExif(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/exifinterface/media/ExifInterface;Landroid/util/Size;I)V

    .line 22
    invoke-static {v9, v6, v7}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->setDateModified(Ljava/lang/String;J)Z

    .line 23
    iget-object v1, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v3, p3

    move/from16 v16, v4

    move-wide v4, v10

    move-object/from16 v8, p1

    move-object v11, v9

    move-object v10, v14

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->updateToDb(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;JJLandroid/graphics/Bitmap;Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface;)V

    const/16 v1, 0xb90

    const-string v2, "Document_Scan_Info"

    .line 24
    invoke-static {v11, v2, v2, v1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->addSef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/String;

    aput-object v11, v1, v16

    invoke-static {v0, v1, v12, v12}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 26
    iget-object v0, v13, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get exif tags - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12
.end method
