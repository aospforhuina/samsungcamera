.class public Lcom/samsung/android/camera/core2/container/CompressConfiguration;
.super Ljava/lang/Object;
.source "CompressConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/container/CompressConfiguration$TYPE;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x1

.field public static final ENCODE:I

.field private static final QUALITY_OF_AUTO_Q_TABLE:I


# instance fields
.field public addThumbnail:Z

.field public camCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field public compressType:I

.field public extJpegMetadata:Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;

.field public format:I

.field public heightSlice:I

.field public isSupportedKeepOriginImage:Z

.field public quality:I

.field public rawSize:I

.field public rowStride:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->isSupportedKeepOriginImage:Z

    const/16 v0, 0x23

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->format:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->quality:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->isSupportedKeepOriginImage:Z

    const/16 v0, 0x23

    .line 8
    iput v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->format:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->quality:I

    .line 10
    iput v0, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    .line 11
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->camCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 12
    iput-boolean p3, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->addThumbnail:Z

    .line 13
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->rowStride:I

    .line 14
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->heightSlice:I

    return-void
.end method
