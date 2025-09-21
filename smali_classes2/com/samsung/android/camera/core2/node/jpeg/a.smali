.class public final synthetic Lcom/samsung/android/camera/core2/node/jpeg/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/jpeg/a;->a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/a;->a:Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    check-cast p2, Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->f(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method
