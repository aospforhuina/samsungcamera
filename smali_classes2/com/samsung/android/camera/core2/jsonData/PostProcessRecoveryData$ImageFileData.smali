.class public final Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
.super Ljava/lang/Object;
.source "PostProcessRecoveryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageFileData"
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lo2/c;
        value = "imageFormat"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final b:Landroid/util/Size;
    .annotation runtime Lo2/c;
        value = "imageSize"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lo2/c;
        value = "imageFilePath"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/util/Size;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a:I

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->b:Landroid/util/Size;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/file/Path;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->c:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a:I

    return p0
.end method

.method public c()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->b:Landroid/util/Size;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageFileData {imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->b:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
