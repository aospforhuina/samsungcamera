.class public Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;
.super Ljava/lang/Object;
.source "SessionContainer.java"


# instance fields
.field private final mDbInfo:Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

.field private final mFileInfo:Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

.field private final mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mNextDbInfo:Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

.field private final mSettingInfo:Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mDbInfo:Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mNextDbInfo:Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mFileInfo:Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;

    iget-object v1, p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    iget-boolean v1, p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mIsPreviewRecording:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->setPreviewRecording(Z)Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mSaveAsPreviewed:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->setSaveAsPreviewed(I)Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;

    move-result-object v0

    iget p1, p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mStorage:I

    .line 9
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->setStorage(I)Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->build()Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mSettingInfo:Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;

    return-void
.end method


# virtual methods
.method getDbInfo()Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mDbInfo:Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

    return-object p0
.end method

.method getFileInfo()Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mFileInfo:Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    return-object p0
.end method

.method getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method getNextDbInfo()Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mNextDbInfo:Lcom/sec/android/app/camera/engine/recordingsession/DbInfo;

    return-object p0
.end method

.method getSettingInfo()Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionContainer;->mSettingInfo:Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;

    return-object p0
.end method
