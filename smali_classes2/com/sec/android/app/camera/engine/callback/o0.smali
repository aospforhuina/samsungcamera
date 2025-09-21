.class public final synthetic Lcom/sec/android/app/camera/engine/callback/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;

.field public final synthetic b:Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/o0;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/o0;->b:Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/o0;->a:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/o0;->b:Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/PreviewCallback;->b(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;)V

    return-void
.end method
