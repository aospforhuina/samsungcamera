.class public final enum Lx4/a;
.super Ljava/lang/Enum;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx4/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lx4/a;

.field public static final enum f:Lx4/a;

.field public static final enum g:Lx4/a;

.field public static final enum k:Lx4/a;

.field private static final synthetic l:[Lx4/a;


# instance fields
.field a:Lx4/c;

.field b:Lx4/b;

.field c:Lx4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lx4/a;

    sget-object v3, Lx4/c;->b:Lx4/c;

    sget-object v4, Lx4/b;->c:Lx4/b;

    sget-object v13, Lx4/d;->c:Lx4/d;

    const-string v1, "DATA_DELETE"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lx4/a;-><init>(Ljava/lang/String;ILx4/c;Lx4/b;Lx4/d;)V

    sput-object v6, Lx4/a;->d:Lx4/a;

    .line 2
    new-instance v0, Lx4/a;

    sget-object v10, Lx4/c;->c:Lx4/c;

    sget-object v11, Lx4/b;->b:Lx4/b;

    sget-object v12, Lx4/d;->b:Lx4/d;

    const-string v8, "GET_POLICY"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lx4/a;-><init>(Ljava/lang/String;ILx4/c;Lx4/b;Lx4/d;)V

    sput-object v0, Lx4/a;->f:Lx4/a;

    .line 3
    new-instance v1, Lx4/a;

    sget-object v2, Lx4/c;->d:Lx4/c;

    sget-object v11, Lx4/b;->d:Lx4/b;

    const-string v8, "SEND_LOG"

    const/4 v9, 0x2

    move-object v7, v1

    move-object v10, v2

    move-object v12, v13

    invoke-direct/range {v7 .. v12}, Lx4/a;-><init>(Ljava/lang/String;ILx4/c;Lx4/b;Lx4/d;)V

    sput-object v1, Lx4/a;->g:Lx4/a;

    .line 4
    new-instance v3, Lx4/a;

    sget-object v11, Lx4/b;->f:Lx4/b;

    const-string v8, "SEND_BUFFERED_LOG"

    const/4 v9, 0x3

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lx4/a;-><init>(Ljava/lang/String;ILx4/c;Lx4/b;Lx4/d;)V

    sput-object v3, Lx4/a;->k:Lx4/a;

    const/4 v2, 0x4

    new-array v2, v2, [Lx4/a;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    aput-object v3, v2, v0

    .line 5
    sput-object v2, Lx4/a;->l:[Lx4/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILx4/c;Lx4/b;Lx4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx4/c;",
            "Lx4/b;",
            "Lx4/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lx4/a;->a:Lx4/c;

    .line 3
    iput-object p4, p0, Lx4/a;->b:Lx4/b;

    .line 4
    iput-object p5, p0, Lx4/a;->c:Lx4/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx4/a;
    .locals 1

    const-class v0, Lx4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx4/a;

    return-object p0
.end method

.method public static values()[Lx4/a;
    .locals 1

    sget-object v0, Lx4/a;->l:[Lx4/a;

    invoke-virtual {v0}, [Lx4/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx4/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx4/a;->c:Lx4/d;

    invoke-virtual {p0}, Lx4/d;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx4/a;->a:Lx4/c;

    invoke-virtual {v1}, Lx4/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx4/a;->b:Lx4/b;

    invoke-virtual {p0}, Lx4/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
