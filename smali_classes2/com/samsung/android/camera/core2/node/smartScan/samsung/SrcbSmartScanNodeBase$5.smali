.class Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase$5;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SrcbSmartScanNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Ljava/lang/Boolean;",
        "[F",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Boolean;[FLjava/lang/Void;)V
    .locals 4

    const/16 p3, 0x8

    new-array v0, p3, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 1
    aget v2, p2, v1

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;->g(Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase;)Lcom/samsung/android/camera/core2/node/smartScan/SmartScanNodeBase$NodeCallback;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/smartScan/SmartScanNodeBase$NodeCallback;->onSmartScanResult(Z[F)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, [F

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/smartScan/samsung/SrcbSmartScanNodeBase$5;->b(Ljava/lang/Boolean;[FLjava/lang/Void;)V

    return-void
.end method
