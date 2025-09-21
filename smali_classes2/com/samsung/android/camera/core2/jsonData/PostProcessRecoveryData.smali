.class public Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
.super Ljava/lang/Object;
.source "PostProcessRecoveryData.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/util/JsonUtils$JsonData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;,
        Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;,
        Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;
    }
.end annotation


# instance fields
.field private final cameraId:Ljava/lang/String;
    .annotation runtime Lo2/c;
        value = "cameraId"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final core2Uri:Ljava/lang/String;
    .annotation runtime Lo2/c;
        value = "core2Uri"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final draftImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
    .annotation runtime Lo2/c;
        value = "draftImageFileData"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final dsExtraInfo:I
    .annotation runtime Lo2/c;
        value = "dsExtraInfo"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final dsMode:I
    .annotation runtime Lo2/c;
        value = "dsMode"
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

.field private final recoveryDataId:I
    .annotation runtime Lo2/c;
        value = "recoveryDataId"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final recoveryMergeDsMode:Z
    .annotation runtime Lo2/c;
        value = "recoveryMergeDsMode"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final resultImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
    .annotation runtime Lo2/c;
        value = "resultImageFileData"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final secMpUri:Ljava/lang/String;
    .annotation runtime Lo2/c;
        value = "secMpUri"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final watermarkData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;
    .annotation runtime Lo2/c;
        value = "watermarkData"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->a:D

    iput-wide v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->jsonVersion:D

    .line 3
    iget-object v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->cameraId:Ljava/lang/String;

    .line 4
    iget v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->c:I

    iput v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->dsMode:I

    .line 5
    iget-boolean v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->d:Z

    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->recoveryMergeDsMode:Z

    .line 6
    iget v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->e:I

    iput v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->dsExtraInfo:I

    .line 7
    iget v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->f:I

    iput v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->recoveryDataId:I

    .line 8
    iget-object v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->g:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->watermarkData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    .line 9
    iget-object v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->core2Uri:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->secMpUri:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->j:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->draftImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    .line 12
    iget-object p1, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->k:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->resultImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;Lr3/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;-><init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;)V

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCore2Uri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->core2Uri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDraftImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->draftImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    return-object p0
.end method

.method public getDsExtraInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->dsExtraInfo:I

    return p0
.end method

.method public getDsMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->dsMode:I

    return p0
.end method

.method public getRecoveryDataId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->recoveryDataId:I

    return p0
.end method

.method public getResultImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->resultImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    return-object p0
.end method

.method public getSecMpUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->secMpUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->jsonVersion:D

    return-wide v0
.end method

.method public getWatermarkData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->watermarkData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    return-object p0
.end method

.method public isRecoveryMergeDsMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->recoveryMergeDsMode:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostProcessRecoveryData {jsonVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->jsonVersion:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->dsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recoveryMergeDsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->recoveryMergeDsMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dsExtraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->dsExtraInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recoveryDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->recoveryDataId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", watermarkData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->watermarkData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", core2Uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->core2Uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secMpUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->secMpUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", draftImageFileData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->draftImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultImageFileData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->resultImageFileData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
