.class public Lo/f;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/g;

.field private final c:Ln/c;

.field private final d:Ln/d;

.field private final e:Ln/f;

.field private final f:Ln/f;

.field private final g:Ln/b;

.field private final h:Lo/r$b;

.field private final i:Lo/r$c;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ln/b;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/g;Ln/c;Ln/d;Ln/f;Ln/f;Ln/b;Lo/r$b;Lo/r$c;FLjava/util/List;Ln/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/g;",
            "Ln/c;",
            "Ln/d;",
            "Ln/f;",
            "Ln/f;",
            "Ln/b;",
            "Lo/r$b;",
            "Lo/r$c;",
            "F",
            "Ljava/util/List<",
            "Ln/b;",
            ">;",
            "Ln/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/f;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/f;->b:Lo/g;

    .line 4
    iput-object p3, p0, Lo/f;->c:Ln/c;

    .line 5
    iput-object p4, p0, Lo/f;->d:Ln/d;

    .line 6
    iput-object p5, p0, Lo/f;->e:Ln/f;

    .line 7
    iput-object p6, p0, Lo/f;->f:Ln/f;

    .line 8
    iput-object p7, p0, Lo/f;->g:Ln/b;

    .line 9
    iput-object p8, p0, Lo/f;->h:Lo/r$b;

    .line 10
    iput-object p9, p0, Lo/f;->i:Lo/r$c;

    .line 11
    iput p10, p0, Lo/f;->j:F

    .line 12
    iput-object p11, p0, Lo/f;->k:Ljava/util/List;

    .line 13
    iput-object p12, p0, Lo/f;->l:Ln/b;

    .line 14
    iput-boolean p13, p0, Lo/f;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/i;

    invoke-direct {v0, p1, p2, p0}, Lj/i;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/f;)V

    return-object v0
.end method

.method public b()Lo/r$b;
    .locals 0

    iget-object p0, p0, Lo/f;->h:Lo/r$b;

    return-object p0
.end method

.method public c()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/f;->l:Ln/b;

    return-object p0
.end method

.method public d()Ln/f;
    .locals 0

    iget-object p0, p0, Lo/f;->f:Ln/f;

    return-object p0
.end method

.method public e()Ln/c;
    .locals 0

    iget-object p0, p0, Lo/f;->c:Ln/c;

    return-object p0
.end method

.method public f()Lo/g;
    .locals 0

    iget-object p0, p0, Lo/f;->b:Lo/g;

    return-object p0
.end method

.method public g()Lo/r$c;
    .locals 0

    iget-object p0, p0, Lo/f;->i:Lo/r$c;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo/f;->k:Ljava/util/List;

    return-object p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Lo/f;->j:F

    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public k()Ln/d;
    .locals 0

    iget-object p0, p0, Lo/f;->d:Ln/d;

    return-object p0
.end method

.method public l()Ln/f;
    .locals 0

    iget-object p0, p0, Lo/f;->e:Ln/f;

    return-object p0
.end method

.method public m()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/f;->g:Ln/b;

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lo/f;->m:Z

    return p0
.end method
