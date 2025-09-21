.class Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;
.super Ljava/lang/Object;
.source "DbInfo.java"


# instance fields
.field private mContentUriForMp:Landroid/net/Uri;

.field private mContentUriForSecMp:Landroid/net/Uri;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mFilename:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mTempFilename:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mTempFilename:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mMimeType:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFilename:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mContentUriForSecMp:Landroid/net/Uri;

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mContentUriForMp:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method closeFileDescriptor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method getContentUriForMp()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mContentUriForMp:Landroid/net/Uri;

    return-object p0
.end method

.method getContentUriForSecMp()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mContentUriForSecMp:Landroid/net/Uri;

    return-object p0
.end method

.method getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method getTempFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mTempFilename:Ljava/lang/String;

    return-object p0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mTempFilename:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mMimeType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFilename:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->closeFileDescriptor()V

    return-void
.end method

.method setContentUriForMp(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mContentUriForMp:Landroid/net/Uri;

    return-void
.end method

.method setContentUriForSecMp(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mContentUriForSecMp:Landroid/net/Uri;

    return-void
.end method

.method setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mFilename:Ljava/lang/String;

    return-void
.end method

.method setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method setTempFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;->mTempFilename:Ljava/lang/String;

    return-void
.end method
