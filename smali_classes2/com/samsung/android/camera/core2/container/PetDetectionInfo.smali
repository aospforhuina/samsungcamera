.class public final Lcom/samsung/android/camera/core2/container/PetDetectionInfo;
.super Ljava/lang/Object;
.source "PetDetectionInfo.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->a:I

    .line 3
    iput p2, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b:I

    .line 4
    iput p3, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->c:I

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b:I

    return p0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->d:Landroid/graphics/Rect;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->a:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->c:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DetectedRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
