.class public final synthetic Lcom/samsung/android/camera/core2/node/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/q0;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/q0;->a:Ljava/nio/ByteBuffer;

    check-cast p1, Lcom/samsung/android/media/heif/SemInputImage;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->f(Ljava/nio/ByteBuffer;Lcom/samsung/android/media/heif/SemInputImage;)V

    return-void
.end method
