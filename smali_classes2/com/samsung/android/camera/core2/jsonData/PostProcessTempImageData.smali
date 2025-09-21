.class public Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;
.super Ljava/lang/Object;
.source "PostProcessTempImageData.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/util/JsonUtils$JsonData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;
    }
.end annotation


# instance fields
.field private final heightSlice:I
    .annotation runtime Lo2/c;
        value = "heightSlice"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final imageFormat:I
    .annotation runtime Lo2/c;
        value = "imageFormat"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final imageSize:Landroid/util/Size;
    .annotation runtime Lo2/c;
        value = "imageSize"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final jsonVersion:D
    .annotation runtime Lo2/c;
        value = "jsonVersion"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final physicalId:Ljava/lang/String;
    .annotation runtime Lo2/c;
        value = "physicalId"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final rowStride:I
    .annotation runtime Lo2/c;
        value = "rowStride"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final timeStamp:J
    .annotation runtime Lo2/c;
        value = "timeStamp"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->a:D

    iput-wide v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->jsonVersion:D

    .line 3
    iget v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->b:I

    iput v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->imageFormat:I

    .line 4
    iget-object v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->c:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->imageSize:Landroid/util/Size;

    .line 5
    iget v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->d:I

    iput v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->rowStride:I

    .line 6
    iget v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->e:I

    iput v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->heightSlice:I

    .line 7
    iget-wide v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->f:J

    iput-wide v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->timeStamp:J

    .line 8
    iget-object p1, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->physicalId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;Lr3/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;-><init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;)V

    return-void
.end method


# virtual methods
.method public getHeightSlice()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->heightSlice:I

    return p0
.end method

.method public getImageFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->imageFormat:I

    return p0
.end method

.method public getImageSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->imageSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPhysicalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->physicalId:Ljava/lang/String;

    return-object p0
.end method

.method public getRowStride()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->rowStride:I

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->timeStamp:J

    return-wide v0
.end method

.method public getVersion()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->jsonVersion:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostProcessTempImageData {jsonVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->jsonVersion:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->imageSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rowStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->rowStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightSlice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->heightSlice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", physicalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->physicalId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
