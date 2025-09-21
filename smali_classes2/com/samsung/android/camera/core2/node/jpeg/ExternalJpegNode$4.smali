.class Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "ExternalJpegNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
        "Landroid/util/Size;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;->a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;->a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->i(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;->a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p3}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->j(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;I)I

    move-result p0

    invoke-interface {v0, p1, p0, p2}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;->onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    check-cast p2, Landroid/util/Size;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;->b(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Ljava/lang/Integer;)V

    return-void
.end method
