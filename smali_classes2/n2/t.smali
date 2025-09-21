.class public abstract enum Ln2/t;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln2/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln2/t;

.field public static final enum b:Ln2/t;

.field private static final synthetic c:[Ln2/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ln2/t$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln2/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln2/t;->a:Ln2/t;

    .line 2
    new-instance v1, Ln2/t$b;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln2/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln2/t;->b:Ln2/t;

    const/4 v3, 0x2

    new-array v3, v3, [Ln2/t;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ln2/t;->c:[Ln2/t;

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

.method synthetic constructor <init>(Ljava/lang/String;ILn2/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ln2/t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln2/t;
    .locals 1

    const-class v0, Ln2/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln2/t;

    return-object p0
.end method

.method public static values()[Ln2/t;
    .locals 1

    sget-object v0, Ln2/t;->c:[Ln2/t;

    invoke-virtual {v0}, [Ln2/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln2/t;

    return-object v0
.end method
