.class Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode$1;
.super Landroid/util/SparseArray;
.source "SaivQRCodeNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode$1;->a:Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 p1, -0x1

    const-string v0, "ERROR_ENGINE_FAIL"

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x2

    const-string v0, "ERROR_CORRECTION_FAILED"

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x3

    const-string v0, "ERROR_UNRECOGNIZED_MODE"

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x4

    const-string v0, "ERROR_UNRECOGNIZED_FORMAT"

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x5

    const-string v0, "ERROR_UNRECOGNIZED_VERSION"

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x6

    const-string v0, "ERROR_INCOMPATIBLE_IMAGE_BUFFER"

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x7

    const-string v0, "ERROR_INCOMPATIBLE_CANT_DECODE"

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x8

    const-string v0, "ERROR_INCOMPATIBLE_QR_NOT_DETECTED"

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
