.class public final Ly2/c;
.super Ly2/a;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/a;-><init>()V

    return-void
.end method

.method private r([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    .line 1
    :cond_1
    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    new-array p0, p0, [Ljava/lang/String;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2c

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static u(Ljava/lang/String;)Ly2/t;
    .locals 3

    const/16 v0, 0x2c

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2
    new-instance v1, Ly2/t;

    invoke-direct {v1}, Ly2/t;-><init>()V

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    iput-object v2, v1, Ly2/t;->a:Ljava/lang/String;

    .line 6
    iput-object p0, v1, Ly2/t;->b:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p0, v1, Ly2/t;->a:Ljava/lang/String;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic j(Lx2/b;)Ly2/u;
    .locals 0

    invoke-virtual {p0, p1}, Ly2/c;->s(Lx2/b;)Ly2/d;

    move-result-object p0

    return-object p0
.end method

.method public s(Lx2/b;)Ly2/d;
    .locals 29

    .line 1
    invoke-static/range {p1 .. p1}, Ly2/z;->c(Lx2/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MECARD:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "N:"

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x0

    .line 4
    aget-object v5, v1, v4

    invoke-static {v5}, Ly2/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    aget-object v1, v1, v4

    invoke-static {v1}, Ly2/c;->u(Ljava/lang/String;)Ly2/t;

    move-result-object v1

    const-string v6, "SOUND:"

    .line 6
    invoke-static {v6, v0, v3}, Ly2/a;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    const-string v6, "TEL:"

    .line 7
    invoke-static {v6, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "TEL-AV:"

    .line 8
    invoke-static {v7, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p0

    .line 9
    invoke-direct {v8, v6, v7}, Ly2/c;->r([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const-string v6, "EMAIL:"

    .line 10
    invoke-static {v6, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v15

    const-string v6, "NOTE:"

    .line 11
    invoke-static {v6, v0, v4}, Ly2/a;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    const-string v4, "ADR:"

    .line 12
    invoke-static {v4, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v19

    const-string v4, "BDAY:"

    .line 13
    invoke-static {v4, v0, v3}, Ly2/a;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    .line 14
    invoke-static {v4, v6}, Ly2/z;->d(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v22, v2

    goto :goto_0

    :cond_2
    move-object/from16 v22, v4

    :goto_0
    const-string v2, "URL:"

    .line 15
    invoke-static {v2, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v25

    const-string v2, "ORG:"

    .line 16
    invoke-static {v2, v0, v3}, Ly2/a;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    const-string v2, "NICKNAME:"

    .line 17
    invoke-static {v2, v0, v3}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    .line 18
    new-instance v0, Ly2/d;

    move-object v7, v0

    invoke-static {v5}, Ly2/z;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-static {v1}, Ly2/z;->i(Ly2/t;)[Ly2/t;

    move-result-object v9

    .line 20
    invoke-static {v5}, Ly2/z;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v7 .. v28}, Ly2/d;-><init>([Ljava/lang/String;[Ly2/t;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly2/f;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ly2/e;[Ly2/m;)V

    return-object v0
.end method
