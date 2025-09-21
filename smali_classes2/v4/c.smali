.class public Lv4/c;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lv4/k;

.field private j:Lv4/d;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lv4/c;->c:Z

    .line 3
    iput-boolean v0, p0, Lv4/c;->d:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lv4/c;->e:I

    .line 5
    iput-boolean v0, p0, Lv4/c;->f:Z

    .line 6
    iput-boolean v0, p0, Lv4/c;->g:Z

    .line 7
    iput v1, p0, Lv4/c;->k:I

    return-void
.end method


# virtual methods
.method public a()Lv4/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv4/c;->c:Z

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lv4/c;->k:I

    return p0
.end method

.method public c()Lv4/d;
    .locals 0

    iget-object p0, p0, Lv4/c;->j:Lv4/d;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv4/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lv4/c;->e:I

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv4/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lv4/k;
    .locals 0

    iget-object p0, p0, Lv4/c;->i:Lv4/k;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv4/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lv4/c;->f:Z

    return p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lv4/c;->c:Z

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lv4/c;->d:Z

    return p0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lv4/c;->k:I

    return-void
.end method

.method public m(Ljava/lang/String;)Lv4/c;
    .locals 0

    iput-object p1, p0, Lv4/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lv4/c;
    .locals 0

    iput-object p1, p0, Lv4/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public o(Lv4/k;)Lv4/c;
    .locals 0

    iput-object p1, p0, Lv4/c;->i:Lv4/k;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lv4/c;
    .locals 0

    iput-object p1, p0, Lv4/c;->h:Ljava/lang/String;

    return-object p0
.end method
