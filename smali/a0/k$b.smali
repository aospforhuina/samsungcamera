.class La0/k$b;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ld0/a;

.field final b:Ld0/a;

.field final c:Ld0/a;

.field final d:Ld0/a;

.field final e:La0/m;

.field final f:La0/p$a;

.field final g:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "La0/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld0/a;Ld0/a;Ld0/a;Ld0/a;La0/m;La0/p$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La0/k$b$a;

    invoke-direct {v0, p0}, La0/k$b$a;-><init>(La0/k$b;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lv0/a;->d(ILv0/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, La0/k$b;->g:Landroidx/core/util/Pools$Pool;

    .line 4
    iput-object p1, p0, La0/k$b;->a:Ld0/a;

    .line 5
    iput-object p2, p0, La0/k$b;->b:Ld0/a;

    .line 6
    iput-object p3, p0, La0/k$b;->c:Ld0/a;

    .line 7
    iput-object p4, p0, La0/k$b;->d:Ld0/a;

    .line 8
    iput-object p5, p0, La0/k$b;->e:La0/m;

    .line 9
    iput-object p6, p0, La0/k$b;->f:La0/p$a;

    return-void
.end method


# virtual methods
.method a(Lx/f;ZZZZ)La0/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lx/f;",
            "ZZZZ)",
            "La0/l<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, La0/k$b;->g:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/l;

    invoke-static {p0}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, La0/l;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, La0/l;->l(Lx/f;ZZZZ)La0/l;

    move-result-object p0

    return-object p0
.end method
