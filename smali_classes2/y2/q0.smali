.class public Ly2/q0;
.super Ly2/u;
.source "WifiParsedResult.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ly2/r0;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ly2/v;->n:Ly2/v;

    invoke-direct {p0, v0}, Ly2/u;-><init>(Ly2/v;)V

    .line 2
    sget-object v0, Ly2/r0;->a:Ly2/r0;

    iput-object v0, p0, Ly2/q0;->j:Ly2/r0;

    .line 3
    iput-object p2, p0, Ly2/q0;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Ly2/q0;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ly2/q0;->d:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Ly2/q0;->e:Z

    .line 7
    iput-object p5, p0, Ly2/q0;->f:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Ly2/q0;->g:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Ly2/q0;->h:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Ly2/q0;->i:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Ly2/q0;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly2/r0;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p9}, Ly2/q0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p10, p0, Ly2/q0;->j:Ly2/r0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Ly2/q0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Ly2/q0;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Ly2/q0;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-boolean p0, p0, Ly2/q0;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/q0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/q0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ly2/r0;
    .locals 0

    iget-object p0, p0, Ly2/q0;->j:Ly2/r0;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/q0;->k:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/q0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Ly2/q0;->e:Z

    return p0
.end method
