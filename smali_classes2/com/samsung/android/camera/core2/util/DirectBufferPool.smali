.class public Lcom/samsung/android/camera/core2/util/DirectBufferPool;
.super Lcom/samsung/android/camera/core2/util/BufferPoolBase;
.source "DirectBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/util/BufferPoolBase<",
        "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "DirectBufferPool"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/DirectBufferPool;->i:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(I)Lcom/samsung/android/camera/core2/util/BufferBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/DirectBufferPool;->h(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected d()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/util/DirectBufferPool;->i:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected bridge synthetic e(Lcom/samsung/android/camera/core2/util/BufferBase;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/DirectBufferPool;->i(Lcom/samsung/android/camera/core2/util/DirectBuffer;)V

    return-void
.end method

.method protected h(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected i(Lcom/samsung/android/camera/core2/util/DirectBuffer;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    return-void
.end method
