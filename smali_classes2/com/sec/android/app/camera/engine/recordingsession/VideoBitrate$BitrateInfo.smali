.class Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;
.super Ljava/lang/Object;
.source "VideoBitrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitrateInfo"
.end annotation


# instance fields
.field private final mAvcBitrate:I

.field private final mHdr10Bitrate:I

.field private final mHevcBitrate:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;->mAvcBitrate:I

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;->mHevcBitrate:I

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;->mHdr10Bitrate:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(III)V

    return-void
.end method


# virtual methods
.method getAvcBitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;->mAvcBitrate:I

    return p0
.end method

.method getHdr10Bitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;->mHdr10Bitrate:I

    return p0
.end method

.method getHevcBitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;->mHevcBitrate:I

    return p0
.end method
