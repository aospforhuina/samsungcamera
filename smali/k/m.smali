.class public Lk/m;
.super Lk/a;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a<",
        "Lo/n;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lo/n;

.field private final j:Landroid/graphics/Path;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/a<",
            "Lo/n;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lk/a;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Lo/n;

    invoke-direct {p1}, Lo/n;-><init>()V

    iput-object p1, p0, Lk/m;->i:Lo/n;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lk/m;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lu/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk/m;->p(Lu/a;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public p(Lu/a;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/a<",
            "Lo/n;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lu/a;->b:Ljava/lang/Object;

    check-cast v0, Lo/n;

    .line 2
    iget-object p1, p1, Lu/a;->c:Ljava/lang/Object;

    check-cast p1, Lo/n;

    .line 3
    iget-object v1, p0, Lk/m;->i:Lo/n;

    invoke-virtual {v1, v0, p1, p2}, Lo/n;->c(Lo/n;Lo/n;F)V

    .line 4
    iget-object p1, p0, Lk/m;->i:Lo/n;

    .line 5
    iget-object p2, p0, Lk/m;->k:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 7
    iget-object v0, p0, Lk/m;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/s;

    invoke-interface {v0, p1}, Lj/s;->c(Lo/n;)Lo/n;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lk/m;->j:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lt/g;->h(Lo/n;Landroid/graphics/Path;)V

    .line 9
    iget-object p0, p0, Lk/m;->j:Landroid/graphics/Path;

    return-object p0
.end method

.method public q(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/s;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/m;->k:Ljava/util/List;

    return-void
.end method
