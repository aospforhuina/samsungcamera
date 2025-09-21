.class public Lj/u;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lj/c;
.implements Lk/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/s$a;

.field private final e:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp/b;Lo/s;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/u;->c:Ljava/util/List;

    .line 3
    invoke-virtual {p2}, Lo/s;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj/u;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lo/s;->g()Z

    move-result v0

    iput-boolean v0, p0, Lj/u;->b:Z

    .line 5
    invoke-virtual {p2}, Lo/s;->f()Lo/s$a;

    move-result-object v0

    iput-object v0, p0, Lj/u;->d:Lo/s$a;

    .line 6
    invoke-virtual {p2}, Lo/s;->e()Ln/b;

    move-result-object v0

    invoke-virtual {v0}, Ln/b;->a()Lk/a;

    move-result-object v0

    iput-object v0, p0, Lj/u;->e:Lk/a;

    .line 7
    invoke-virtual {p2}, Lo/s;->b()Ln/b;

    move-result-object v1

    invoke-virtual {v1}, Ln/b;->a()Lk/a;

    move-result-object v1

    iput-object v1, p0, Lj/u;->f:Lk/a;

    .line 8
    invoke-virtual {p2}, Lo/s;->d()Ln/b;

    move-result-object p2

    invoke-virtual {p2}, Ln/b;->a()Lk/a;

    move-result-object p2

    iput-object p2, p0, Lj/u;->g:Lk/a;

    .line 9
    invoke-virtual {p1, v0}, Lp/b;->i(Lk/a;)V

    .line 10
    invoke-virtual {p1, v1}, Lp/b;->i(Lk/a;)V

    .line 11
    invoke-virtual {p1, p2}, Lp/b;->i(Lk/a;)V

    .line 12
    invoke-virtual {v0, p0}, Lk/a;->a(Lk/a$b;)V

    .line 13
    invoke-virtual {v1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 14
    invoke-virtual {p2, p0}, Lk/a;->a(Lk/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lj/u;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lj/u;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a$b;

    invoke-interface {v1}, Lk/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/c;",
            ">;",
            "Ljava/util/List<",
            "Lj/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method d(Lk/a$b;)V
    .locals 0

    iget-object p0, p0, Lj/u;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Lk/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj/u;->f:Lk/a;

    return-object p0
.end method

.method public g()Lk/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj/u;->g:Lk/a;

    return-object p0
.end method

.method public i()Lk/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj/u;->e:Lk/a;

    return-object p0
.end method

.method j()Lo/s$a;
    .locals 0

    iget-object p0, p0, Lj/u;->d:Lo/s$a;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lj/u;->b:Z

    return p0
.end method
