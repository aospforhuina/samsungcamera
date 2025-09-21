.class Lcom/sec/android/app/camera/engine/FunManagerImpl$2;
.super Ljava/lang/Object;
.source "FunManagerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/FunManagerImpl;->startFunProcessor(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/FunManagerImpl;

.field final synthetic val$currentZoomValue:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    iput p2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->val$currentZoomValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Float;
    .locals 6

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->val$currentZoomValue:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const p0, 0x42c96c5d

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->o(Lcom/sec/android/app/camera/engine/FunManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->o(Lcom/sec/android/app/camera/engine/FunManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensInfoAvailableFocalLengths()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    .line 6
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->val$currentZoomValue:I

    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    div-double/2addr v2, v0

    double-to-float p0, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;->call()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
