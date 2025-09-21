.class public Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;
.super Ljava/lang/Object;
.source "AttachModeManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/AttachModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;
    }
.end annotation


# static fields
.field private static final HIGH_QUALITY:I = 0x1

.field private static final KEY_AUDIO_BITRATE:Ljava/lang/String; = "audio_bitrate"

.field private static final KEY_AUDIO_CHANNEL:Ljava/lang/String; = "audio_channel"

.field private static final KEY_AUDIO_ENCODER:Ljava/lang/String; = "audio_encoder"

.field private static final KEY_AUDIO_SAMPLING_RATE:Ljava/lang/String; = "audio_sampling_rate"

.field private static final KEY_BACK_VIDEO_RESOLUTION:Ljava/lang/String; = "back_video_size"

.field private static final KEY_FILE_SIZE_INTERVAL:Ljava/lang/String; = "file_size_interval"

.field private static final KEY_FRONT_VIDEO_RESOLUTION:Ljava/lang/String; = "front_video_size"

.field private static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "output_format"

.field private static final KEY_VIDEO_BITRATE:Ljava/lang/String; = "video_bitrate"

.field private static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "video_encoder"

.field private static final KEY_VIDEO_FPS:Ljava/lang/String; = "video_fps"

.field private static final LOW_QUALITY:I = 0x0

.field private static final NOT_REQUESTED:I = -0x1

.field private static final NO_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AttachModeManager"


# instance fields
.field private final mAttachFragmentLock:Ljava/lang/Object;

.field private mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsCallingPackageHasLocationPermission:Z

.field private mIsVideoResolutionRequested:Z

.field private mIsVideoSavedOnRequestedUri:Z

.field private mMyExtras:Landroid/os/Bundle;

.field private mPreviousPreviewRect:Landroid/graphics/Rect;

.field private mRequestedMediaRecorderProfile:Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;

.field private mRequestedRecordingDurationLimit:I

.field private mRequestedRecordingSizeLimit:J

.field private mRequestedSaveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mAttachFragmentLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedRecordingDurationLimit:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedRecordingSizeLimit:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedMediaRecorderProfile:Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedSaveUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsCallingPackageHasLocationPermission:Z

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoSavedOnRequestedUri:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoResolutionRequested:Z

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 11
    iput-object p2, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 12
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    .line 13
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->initialize(Ljava/lang/String;)V

    .line 14
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/attach/AttachViewModel$AttachViewModelFactory;

    invoke-direct {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel$AttachViewModelFactory;-><init>()V

    invoke-direct {p2, p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/attach/AttachViewModel;

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    return-void
.end method

.method public static synthetic a(ZLcom/sec/android/app/camera/attach/AttachFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->lambda$onWindowFocusChanged$0(ZLcom/sec/android/app/camera/attach/AttachFragment;)V

    return-void
.end method

.method private checkExtraDurationLimit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "AttachModeManager"

    if-nez v0, :cond_0

    const-string p0, "No EXTRA_DURATION_LIMIT"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExtraDurationLimit. duration limit : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->setRequestedRecordingDurationLimit(I)V

    return-void
.end method

.method private checkExtraMediaRecorderProfileInfo()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "video_encoder"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "video_bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "video_fps"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "output_format"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_encoder"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_sampling_rate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "file_size_interval"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "back_video_size"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    .line 12
    iget-object v3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v2, :cond_0

    if-ne v3, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoResolutionRequested:Z

    :cond_1
    if-ne v1, v2, :cond_2

    .line 14
    sget-object v0, Lu3/l;->k:Lu3/l;

    invoke-static {v0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-ne v3, v2, :cond_3

    .line 15
    sget-object v0, Lu3/l;->r0:Lu3/l;

    invoke-static {v0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v3

    .line 16
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoResolutionRequested:Z

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_BACK_VIDEO_FIXED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_FRONT_VIDEO_FIXED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 19
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExtraMediaRecorderProfileInfo. videoEncoder : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoBitrate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoFps : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", outputFormat : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioEncoder : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioBitrate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioChannels : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioSamplingRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fileSizeInterval : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", backVideoResolution : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frontVideoResolution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttachModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;-><init>(IIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->setRequestedMediaRecorderProfile(Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;)V

    return-void
.end method

.method private checkExtraOutput()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "AttachModeManager"

    if-nez v0, :cond_0

    const-string p0, "No EXTRA_OUTPUT"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->setRequestedSaveUri(Landroid/net/Uri;)V

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkExtraOutput. saveUri : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkExtraSizeLimit()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->setRequestedRecordingSizeLimit(J)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AttachModeManager"

    const-string v0, "No EXTRA_SIZE_LIMIT"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mAttachFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v1, 0x7f0a008a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 3
    instance-of v1, p0, Lcom/sec/android/app/camera/attach/AttachFragment;

    if-eqz v1, :cond_0

    .line 4
    check-cast p0, Lcom/sec/android/app/camera/attach/AttachFragment;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "AttachModeManager"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "initialize : Video capture intent"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->checkExtraMediaRecorderProfileInfo()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->checkExtraSizeLimit()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->checkExtraDurationLimit()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->checkExtraOutput()V

    goto :goto_1

    :pswitch_1
    const-string v0, "initialize : Image capture intent"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mMyExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->checkExtraOutput()V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_2
        -0x62d863dd -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCallingPackageHasLocationPermission()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCallingPackageHasLocationPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsCallingPackageHasLocationPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttachModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsCallingPackageHasLocationPermission:Z

    return p0
.end method

.method private static synthetic lambda$onWindowFocusChanged$0(ZLcom/sec/android/app/camera/attach/AttachFragment;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private setRequestedMediaRecorderProfile(Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedMediaRecorderProfile:Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;

    return-void
.end method

.method private setRequestedRecordingDurationLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedRecordingDurationLimit:I

    return-void
.end method

.method private setRequestedRecordingSizeLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedRecordingSizeLimit:J

    return-void
.end method

.method private setRequestedSaveUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-void
.end method

.method private updateCallingPackageHasLocationPermission()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsCallingPackageHasLocationPermission:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCallingPackageHasLocationPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsCallingPackageHasLocationPermission:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AttachModeManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreviousPreviewRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mPreviousPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedMediaRecorderProfile:Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;

    return-object p0
.end method

.method public getRequestedRecordingDurationLimit()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedRecordingDurationLimit:I

    return p0
.end method

.method public getRequestedRecordingSizeLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedRecordingSizeLimit:J

    return-wide v0
.end method

.method public getRequestedSaveUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isAttachFragmentVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocationPermissionGranted()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->isCallingPackageHasLocationPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isVideoResolutionRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoResolutionRequested:Z

    return p0
.end method

.method public isVideoSavedOnRequestedUri()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoSavedOnRequestedUri:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/attach/AttachFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/attach/AttachFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getAttachFragment()Lcom/sec/android/app/camera/attach/AttachFragment;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/attach/h;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/attach/h;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public retryAttachVideoRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->retryAttachVideoRecording()V

    return-void
.end method

.method public setPreviousPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mPreviousPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setVideoSavedOnRequestedUri(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mIsVideoSavedOnRequestedUri:Z

    return-void
.end method

.method public startAttachFragment()V
    .locals 5

    const-string v0, "AttachModeManager"

    const-string/jumbo v1, "startAttachFragment"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;->VIDEO:Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;->IMAGE:Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mPreviousPreviewRect:Landroid/graphics/Rect;

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mAttachFragmentLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v4, v1, v0, v2}, Lcom/sec/android/app/camera/attach/AttachViewModel;->setData(Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/Engine$ContentData;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f010005

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const v0, 0x7f0a008a

    .line 11
    new-instance v1, Lcom/sec/android/app/camera/attach/AttachFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/attach/AttachFragment;-><init>()V

    const-string v2, "attachFragment"

    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string v0, "attachFragment"

    .line 12
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 14
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAttachMode(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->updateCallingPackageHasLocationPermission()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_2
        -0x62d863dd -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateIntentForAttachMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const-string v1, "camerafacing"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "front"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "back"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const-string v1, "previous_mode"

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "Video"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "Photo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-void
.end method
