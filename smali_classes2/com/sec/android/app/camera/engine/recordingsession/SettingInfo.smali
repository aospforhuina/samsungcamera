.class Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;
    }
.end annotation


# instance fields
.field private mFacing:I

.field private final mIsPreviewRecording:Z

.field private mIsShutterSoundEnabled:Z

.field private final mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

.field private final mSavedAsPreviewed:I

.field private final mStorage:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->b(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->a(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mIsPreviewRecording:Z

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->c(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mSavedAsPreviewed:I

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->d(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mStorage:I

    return-void
.end method


# virtual methods
.method getFacing()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mFacing:I

    return p0
.end method

.method getResolution()Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-object p0
.end method

.method getSavedAsPreviewed()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mSavedAsPreviewed:I

    return p0
.end method

.method getStorage()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mStorage:I

    return p0
.end method

.method isPreviewRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mIsPreviewRecording:Z

    return p0
.end method

.method isShutterSoundEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mIsShutterSoundEnabled:Z

    return p0
.end method

.method setFacing(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mFacing:I

    return-void
.end method

.method setShutterSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;->mIsShutterSoundEnabled:Z

    return-void
.end method
