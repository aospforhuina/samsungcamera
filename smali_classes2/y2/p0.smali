.class public final Ly2/p0;
.super Ly2/q0;
.source "WifiDPPParsedResult.java"


# instance fields
.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v11, p0

    .line 1
    sget-object v10, Ly2/r0;->b:Ly2/r0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Ly2/q0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly2/r0;)V

    move-object v0, p1

    .line 2
    iput-object v0, v11, Ly2/p0;->l:Ljava/lang/String;

    move-object v0, p2

    .line 3
    iput-object v0, v11, Ly2/p0;->m:Ljava/lang/String;

    move-object v0, p3

    .line 4
    iput-object v0, v11, Ly2/p0;->n:Ljava/lang/String;

    move-object/from16 v0, p4

    .line 5
    iput-object v0, v11, Ly2/p0;->o:Ljava/lang/String;

    move-object/from16 v0, p5

    .line 6
    iput-object v0, v11, Ly2/p0;->p:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 7
    iput-object v0, v11, Ly2/p0;->q:Ljava/lang/String;

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
    iget-object v1, p0, Ly2/p0;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Ly2/p0;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Ly2/p0;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-object v1, p0, Ly2/p0;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    iget-object v1, p0, Ly2/p0;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    iget-object p0, p0, Ly2/p0;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
