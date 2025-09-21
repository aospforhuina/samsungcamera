.class public Lk/e;
.super Lk/g;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/g<",
        "Lo/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lo/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/a<",
            "Lo/d;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lk/g;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/a;

    iget-object p1, p1, Lu/a;->b:Ljava/lang/Object;

    check-cast p1, Lo/d;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lo/d;->c()I

    move-result v0

    .line 4
    :goto_0
    new-instance p1, Lo/d;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lo/d;-><init>([F[I)V

    iput-object p1, p0, Lk/e;->i:Lo/d;

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lu/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk/e;->p(Lu/a;F)Lo/d;

    move-result-object p0

    return-object p0
.end method

.method p(Lu/a;F)Lo/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/a<",
            "Lo/d;",
            ">;F)",
            "Lo/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/e;->i:Lo/d;

    iget-object v1, p1, Lu/a;->b:Ljava/lang/Object;

    check-cast v1, Lo/d;

    iget-object p1, p1, Lu/a;->c:Ljava/lang/Object;

    check-cast p1, Lo/d;

    invoke-virtual {v0, v1, p1, p2}, Lo/d;->d(Lo/d;Lo/d;F)V

    .line 2
    iget-object p0, p0, Lk/e;->i:Lo/d;

    return-object p0
.end method
