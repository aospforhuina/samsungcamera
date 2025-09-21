.class Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;
.super Ljava/lang/Object;
.source "AttachModeManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestedMediaProfile"
.end annotation


# instance fields
.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioEncoder:I

.field private final mAudioSamplingRate:I

.field private final mFileSizeIntervalInKb:I

.field private final mOutputFormat:I

.field private final mVideoBitrate:I

.field private final mVideoEncoder:I

.field private final mVideoFrameRate:I


# direct methods
.method constructor <init>(IIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioBitrate:I

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioChannels:I

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioEncoder:I

    .line 5
    iput p4, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioSamplingRate:I

    .line 6
    div-int/lit16 p5, p5, 0x400

    iput p5, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mFileSizeIntervalInKb:I

    .line 7
    iput p6, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mOutputFormat:I

    .line 8
    iput p7, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mVideoBitrate:I

    .line 9
    iput p8, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mVideoEncoder:I

    .line 10
    iput p9, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mVideoFrameRate:I

    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioBitrate:I

    return p0
.end method

.method public getAudioChannels()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioChannels:I

    return p0
.end method

.method public getAudioEncoder()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioEncoder:I

    return p0
.end method

.method public getAudioSamplingRate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mAudioSamplingRate:I

    return p0
.end method

.method public getFileSizeInterval()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mFileSizeIntervalInKb:I

    return p0
.end method

.method public getOutputFormat()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mOutputFormat:I

    return p0
.end method

.method public getVideoBitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mVideoBitrate:I

    return p0
.end method

.method public getVideoEncoder()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mVideoEncoder:I

    return p0
.end method

.method public getVideoFrameRate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl$RequestedMediaProfile;->mVideoFrameRate:I

    return p0
.end method
