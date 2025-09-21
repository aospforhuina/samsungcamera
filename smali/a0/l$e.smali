.class final La0/l$e;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "La0/l$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La0/l$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, La0/l$e;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La0/l$d;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La0/l$e;->a:Ljava/util/List;

    return-void
.end method

.method private static d(Lq0/g;)La0/l$d;
    .locals 2

    new-instance v0, La0/l$d;

    invoke-static {}, Lu0/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La0/l$d;-><init>(Lq0/g;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method a(Lq0/g;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    new-instance v0, La0/l$d;

    invoke-direct {v0, p1, p2}, La0/l$d;-><init>(Lq0/g;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lq0/g;)Z
    .locals 0

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-static {p1}, La0/l$e;->d(Lq0/g;)La0/l$d;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method c()La0/l$e;
    .locals 2

    new-instance v0, La0/l$e;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, La0/l$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method clear()V
    .locals 0

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method e(Lq0/g;)V
    .locals 0

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-static {p1}, La0/l$e;->d(Lq0/g;)La0/l$d;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method isEmpty()Z
    .locals 0

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "La0/l$d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method size()I
    .locals 0

    iget-object p0, p0, La0/l$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
