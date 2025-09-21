.class public abstract enum Ln2/u;
.super Ljava/lang/Enum;
.source "ToNumberPolicy.java"

# interfaces
.implements Ln2/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln2/u;",
        ">;",
        "Ln2/v;"
    }
.end annotation


# static fields
.field public static final enum a:Ln2/u;

.field public static final enum b:Ln2/u;

.field public static final enum c:Ln2/u;

.field public static final enum d:Ln2/u;

.field private static final synthetic f:[Ln2/u;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ln2/u$a;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln2/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln2/u;->a:Ln2/u;

    .line 2
    new-instance v1, Ln2/u$b;

    const-string v3, "LAZILY_PARSED_NUMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln2/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln2/u;->b:Ln2/u;

    .line 3
    new-instance v3, Ln2/u$c;

    const-string v5, "LONG_OR_DOUBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln2/u$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln2/u;->c:Ln2/u;

    .line 4
    new-instance v5, Ln2/u$d;

    const-string v7, "BIG_DECIMAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln2/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln2/u;->d:Ln2/u;

    const/4 v7, 0x4

    new-array v7, v7, [Ln2/u;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ln2/u;->f:[Ln2/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILn2/u$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ln2/u;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln2/u;
    .locals 1

    const-class v0, Ln2/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln2/u;

    return-object p0
.end method

.method public static values()[Ln2/u;
    .locals 1

    sget-object v0, Ln2/u;->f:[Ln2/u;

    invoke-virtual {v0}, [Ln2/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln2/u;

    return-object v0
.end method
