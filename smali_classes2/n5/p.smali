.class public Ln5/p;
.super Ljava/lang/Object;
.source "ProControlPanelItem.java"


# instance fields
.field private final a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lx5/e$b;


# direct methods
.method private constructor <init>(ILx5/e$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln5/p;->b:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Ln5/p;->c:Z

    .line 4
    iput-boolean v0, p0, Ln5/p;->f:Z

    .line 5
    iput-boolean v1, p0, Ln5/p;->g:Z

    .line 6
    iput p1, p0, Ln5/p;->a:I

    .line 7
    iput-object p2, p0, Ln5/p;->i:Lx5/e$b;

    .line 8
    iput-boolean v1, p0, Ln5/p;->d:Z

    .line 9
    iput-boolean v1, p0, Ln5/p;->e:Z

    return-void
.end method

.method public static j(ILx5/e$b;)Ln5/p;
    .locals 1

    new-instance v0, Ln5/p;

    invoke-direct {v0, p0, p1}, Ln5/p;-><init>(ILx5/e$b;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln5/p;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Ln5/p;->b:Z

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ln5/p;->a:I

    return p0
.end method

.method public d()Lx5/e$b;
    .locals 0

    iget-object p0, p0, Ln5/p;->i:Lx5/e$b;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Ln5/p;->g:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Ln5/p;->f:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Ln5/p;->c:Z

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Ln5/p;->e:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Ln5/p;->d:Z

    return p0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln5/p;->h:Ljava/lang/String;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/p;->f:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/p;->g:Z

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/p;->b:Z

    return-void
.end method

.method public o(Lx5/e$b;)V
    .locals 0

    iput-object p1, p0, Ln5/p;->i:Lx5/e$b;

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/p;->c:Z

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/p;->e:Z

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/p;->d:Z

    return-void
.end method
