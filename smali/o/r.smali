.class public Lo/r;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lo/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/r$c;,
        Lo/r$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ln/a;

.field private final e:Ln/d;

.field private final f:Ln/b;

.field private final g:Lo/r$b;

.field private final h:Lo/r$c;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln/b;Ljava/util/List;Ln/a;Ln/d;Ln/b;Lo/r$b;Lo/r$c;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln/b;",
            "Ljava/util/List<",
            "Ln/b;",
            ">;",
            "Ln/a;",
            "Ln/d;",
            "Ln/b;",
            "Lo/r$b;",
            "Lo/r$c;",
            "FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/r;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/r;->b:Ln/b;

    .line 4
    iput-object p3, p0, Lo/r;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lo/r;->d:Ln/a;

    .line 6
    iput-object p5, p0, Lo/r;->e:Ln/d;

    .line 7
    iput-object p6, p0, Lo/r;->f:Ln/b;

    .line 8
    iput-object p7, p0, Lo/r;->g:Lo/r$b;

    .line 9
    iput-object p8, p0, Lo/r;->h:Lo/r$c;

    .line 10
    iput p9, p0, Lo/r;->i:F

    .line 11
    iput-boolean p10, p0, Lo/r;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/t;

    invoke-direct {v0, p1, p2, p0}, Lj/t;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/r;)V

    return-object v0
.end method

.method public b()Lo/r$b;
    .locals 0

    iget-object p0, p0, Lo/r;->g:Lo/r$b;

    return-object p0
.end method

.method public c()Ln/a;
    .locals 0

    iget-object p0, p0, Lo/r;->d:Ln/a;

    return-object p0
.end method

.method public d()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/r;->b:Ln/b;

    return-object p0
.end method

.method public e()Lo/r$c;
    .locals 0

    iget-object p0, p0, Lo/r;->h:Lo/r$c;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo/r;->c:Ljava/util/List;

    return-object p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Lo/r;->i:F

    return p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/r;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ln/d;
    .locals 0

    iget-object p0, p0, Lo/r;->e:Ln/d;

    return-object p0
.end method

.method public j()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/r;->f:Ln/b;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lo/r;->j:Z

    return p0
.end method
