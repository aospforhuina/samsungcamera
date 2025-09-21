.class public final Ly2/d;
.super Ly2/u;
.source "AddressBookParsedResult.java"


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:[Ly2/t;

.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:[Ljava/lang/String;

.field private final n:[Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ly2/f;

.field private final r:Ljava/lang/String;

.field private final s:[Ljava/lang/String;

.field private final t:[Ljava/lang/String;

.field private final u:[Ly2/e;

.field private final v:[Ly2/m;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ly2/t;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly2/f;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ly2/e;[Ly2/m;)V
    .locals 9

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 1
    sget-object v7, Ly2/v;->a:Ly2/v;

    invoke-direct {p0, v7}, Ly2/u;-><init>(Ly2/v;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 2
    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Phone numbers and types lengths differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 4
    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Emails and types lengths differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 6
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Addresses and types lengths differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    move-object v7, p1

    .line 8
    iput-object v7, v0, Ly2/d;->b:[Ljava/lang/String;

    move-object v7, p2

    .line 9
    iput-object v7, v0, Ly2/d;->c:[Ly2/t;

    move-object v7, p3

    .line 10
    iput-object v7, v0, Ly2/d;->d:[Ljava/lang/String;

    move-object v7, p4

    .line 11
    iput-object v7, v0, Ly2/d;->e:[Ljava/lang/String;

    move-object v7, p5

    .line 12
    iput-object v7, v0, Ly2/d;->f:Ljava/lang/String;

    .line 13
    iput-object v1, v0, Ly2/d;->g:[Ljava/lang/String;

    .line 14
    iput-object v2, v0, Ly2/d;->h:[Ljava/lang/String;

    .line 15
    iput-object v3, v0, Ly2/d;->i:[Ljava/lang/String;

    .line 16
    iput-object v4, v0, Ly2/d;->j:[Ljava/lang/String;

    move-object/from16 v1, p10

    .line 17
    iput-object v1, v0, Ly2/d;->k:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 18
    iput-object v1, v0, Ly2/d;->l:Ljava/lang/String;

    .line 19
    iput-object v5, v0, Ly2/d;->m:[Ljava/lang/String;

    .line 20
    iput-object v6, v0, Ly2/d;->n:[Ljava/lang/String;

    move-object/from16 v1, p14

    .line 21
    iput-object v1, v0, Ly2/d;->o:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 22
    iput-object v1, v0, Ly2/d;->p:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 23
    iput-object v1, v0, Ly2/d;->q:Ly2/f;

    move-object/from16 v1, p17

    .line 24
    iput-object v1, v0, Ly2/d;->r:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 25
    iput-object v1, v0, Ly2/d;->s:[Ljava/lang/String;

    move-object/from16 v1, p19

    .line 26
    iput-object v1, v0, Ly2/d;->t:[Ljava/lang/String;

    move-object/from16 v1, p20

    .line 27
    iput-object v1, v0, Ly2/d;->u:[Ly2/e;

    move-object/from16 v1, p21

    .line 28
    iput-object v1, v0, Ly2/d;->v:[Ly2/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Ly2/d;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Ly2/d;->e:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Ly2/d;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-object v1, p0, Ly2/d;->r:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    iget-object v1, p0, Ly2/d;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    iget-object v1, p0, Ly2/d;->m:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    iget-object v1, p0, Ly2/d;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 9
    iget-object v1, p0, Ly2/d;->i:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 10
    iget-object v1, p0, Ly2/d;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    iget-object v1, p0, Ly2/d;->s:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 12
    iget-object v1, p0, Ly2/d;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    iget-object v1, p0, Ly2/d;->t:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 14
    iget-object p0, p0, Ly2/d;->l:Ljava/lang/String;

    invoke-static {p0, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()[Ly2/e;
    .locals 0

    iget-object p0, p0, Ly2/d;->u:[Ly2/e;

    return-object p0
.end method

.method public f()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->n:[Ljava/lang/String;

    return-object p0
.end method

.method public g()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->m:[Ljava/lang/String;

    return-object p0
.end method

.method public h()Ly2/f;
    .locals 0

    iget-object p0, p0, Ly2/d;->q:Ly2/f;

    return-object p0
.end method

.method public i()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->j:[Ljava/lang/String;

    return-object p0
.end method

.method public j()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->i:[Ljava/lang/String;

    return-object p0
.end method

.method public k()[Ly2/m;
    .locals 0

    iget-object p0, p0, Ly2/d;->v:[Ly2/m;

    return-object p0
.end method

.method public l()[Ly2/t;
    .locals 0

    iget-object p0, p0, Ly2/d;->c:[Ly2/t;

    return-object p0
.end method

.method public m()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public n()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->e:[Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->l:Ljava/lang/String;

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->o:Ljava/lang/String;

    return-object p0
.end method

.method public q()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public r()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public s()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->r:Ljava/lang/String;

    return-object p0
.end method

.method public u()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/d;->s:[Ljava/lang/String;

    return-object p0
.end method
