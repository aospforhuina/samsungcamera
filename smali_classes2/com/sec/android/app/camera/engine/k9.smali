.class public final synthetic Lcom/sec/android/app/camera/engine/k9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;

.field public final synthetic b:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/k9;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/k9;->b:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/k9;->a:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/k9;->b:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

    check-cast p1, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->N(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;)V

    return-void
.end method
