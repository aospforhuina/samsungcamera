.class public Lcom/samsung/android/camera/core2/util/BasketCollector$Item;
.super Ljava/lang/Object;
.source "BasketCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/BasketCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private final b:I

.field private final c:Lcom/samsung/android/camera/core2/ExtraBundle$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/ExtraBundle$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/camera/core2/util/ImageBuffer;

.field private e:Z


# direct methods
.method public constructor <init>(IILcom/samsung/android/camera/core2/ExtraBundle$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/camera/core2/ExtraBundle$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    iput p2, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->b:I

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->c:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/camera/core2/util/ImageInfo;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->b:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->n()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->d:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    return-object p0
.end method

.method public c()Lcom/samsung/android/camera/core2/ExtraBundle$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/ExtraBundle$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->c:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->e:Z

    return p0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->e:Z

    return-void
.end method

.method public f(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;->d:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    return-void
.end method
