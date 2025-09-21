.class public Lo/j;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lo/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/j$a;

.field private final c:Ln/b;

.field private final d:Ln/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ln/b;

.field private final f:Ln/b;

.field private final g:Ln/b;

.field private final h:Ln/b;

.field private final i:Ln/b;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/j$a;Ln/b;Ln/m;Ln/b;Ln/b;Ln/b;Ln/b;Ln/b;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/j$a;",
            "Ln/b;",
            "Ln/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ln/b;",
            "Ln/b;",
            "Ln/b;",
            "Ln/b;",
            "Ln/b;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/j;->b:Lo/j$a;

    .line 4
    iput-object p3, p0, Lo/j;->c:Ln/b;

    .line 5
    iput-object p4, p0, Lo/j;->d:Ln/m;

    .line 6
    iput-object p5, p0, Lo/j;->e:Ln/b;

    .line 7
    iput-object p6, p0, Lo/j;->f:Ln/b;

    .line 8
    iput-object p7, p0, Lo/j;->g:Ln/b;

    .line 9
    iput-object p8, p0, Lo/j;->h:Ln/b;

    .line 10
    iput-object p9, p0, Lo/j;->i:Ln/b;

    .line 11
    iput-boolean p10, p0, Lo/j;->j:Z

    .line 12
    iput-boolean p11, p0, Lo/j;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/n;

    invoke-direct {v0, p1, p2, p0}, Lj/n;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/j;)V

    return-object v0
.end method

.method public b()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/j;->f:Ln/b;

    return-object p0
.end method

.method public c()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/j;->h:Ln/b;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/j;->g:Ln/b;

    return-object p0
.end method

.method public f()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/j;->i:Ln/b;

    return-object p0
.end method

.method public g()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/j;->c:Ln/b;

    return-object p0
.end method

.method public h()Ln/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo/j;->d:Ln/m;

    return-object p0
.end method

.method public i()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/j;->e:Ln/b;

    return-object p0
.end method

.method public j()Lo/j$a;
    .locals 0

    iget-object p0, p0, Lo/j;->b:Lo/j$a;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lo/j;->j:Z

    return p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lo/j;->k:Z

    return p0
.end method
