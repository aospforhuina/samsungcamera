.class Lcom/samsung/android/camera/core2/node/SecHeifNode$3;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecHeifNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/SecHeifNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/SecHeifNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/SecHeifNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode$3;->a:Lcom/samsung/android/camera/core2/node/SecHeifNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b([BLjava/lang/Void;Ljava/lang/Void;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->l()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HeifExifDataNativeCallback: ExifBuffer size = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode$3;->a:Lcom/samsung/android/camera/core2/node/SecHeifNode;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->k(Lcom/samsung/android/camera/core2/node/SecHeifNode;[B)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->l()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "HeifExifDataNativeCallback: ExifBuffer is null."

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode$3;->a:Lcom/samsung/android/camera/core2/node/SecHeifNode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->k(Lcom/samsung/android/camera/core2/node/SecHeifNode;[B)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/SecHeifNode$3;->b([BLjava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
