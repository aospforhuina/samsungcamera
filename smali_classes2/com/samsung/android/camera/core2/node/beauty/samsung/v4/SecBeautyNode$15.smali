.class Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$15;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecBeautyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;
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
.field final synthetic a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$15;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b([BLjava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$15;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->access$102(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;[B)[B

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$15;->b([BLjava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
