.class public Lo/e;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Lo/g;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ln/c;

.field private final d:Ln/d;

.field private final e:Ln/f;

.field private final f:Ln/f;

.field private final g:Ljava/lang/String;

.field private final h:Ln/b;

.field private final i:Ln/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/g;Landroid/graphics/Path$FillType;Ln/c;Ln/d;Ln/f;Ln/f;Ln/b;Ln/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo/e;->a:Lo/g;

    .line 3
    iput-object p3, p0, Lo/e;->b:Landroid/graphics/Path$FillType;

    .line 4
    iput-object p4, p0, Lo/e;->c:Ln/c;

    .line 5
    iput-object p5, p0, Lo/e;->d:Ln/d;

    .line 6
    iput-object p6, p0, Lo/e;->e:Ln/f;

    .line 7
    iput-object p7, p0, Lo/e;->f:Ln/f;

    .line 8
    iput-object p1, p0, Lo/e;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lo/e;->h:Ln/b;

    .line 10
    iput-object p9, p0, Lo/e;->i:Ln/b;

    .line 11
    iput-boolean p10, p0, Lo/e;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/h;

    invoke-direct {v0, p1, p2, p0}, Lj/h;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/e;)V

    return-object v0
.end method

.method public b()Ln/f;
    .locals 0

    iget-object p0, p0, Lo/e;->f:Ln/f;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lo/e;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Ln/c;
    .locals 0

    iget-object p0, p0, Lo/e;->c:Ln/c;

    return-object p0
.end method

.method public e()Lo/g;
    .locals 0

    iget-object p0, p0, Lo/e;->a:Lo/g;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ln/d;
    .locals 0

    iget-object p0, p0, Lo/e;->d:Ln/d;

    return-object p0
.end method

.method public h()Ln/f;
    .locals 0

    iget-object p0, p0, Lo/e;->e:Ln/f;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lo/e;->j:Z

    return p0
.end method
