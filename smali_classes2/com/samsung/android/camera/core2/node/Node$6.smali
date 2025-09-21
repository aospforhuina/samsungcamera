.class Lcom/samsung/android/camera/core2/node/Node$6;
.super Ljava/util/EnumMap;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/camera/core2/util/ImgFormat;",
        "Ljava/util/function/BiFunction<",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        "Lcom/samsung/android/camera/core2/ExtraBundle;",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/Node;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/Node$6;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/r;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/r;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->o:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/r;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/r;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->m:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/o;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/o;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->t:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/p;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/p;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->q:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/p;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/p;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->r:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/p;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/p;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->B:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/n;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/n;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->l:Lcom/samsung/android/camera/core2/util/ImgFormat;

    new-instance v0, Lcom/samsung/android/camera/core2/node/q;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/q;-><init>(Lcom/samsung/android/camera/core2/node/Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
