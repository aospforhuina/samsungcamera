.class public final enum Lv2/b;
.super Ljava/lang/Enum;
.source "PublicSuffixType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lv2/b;

.field public static final enum d:Lv2/b;

.field private static final synthetic f:[Lv2/b;


# instance fields
.field private final a:C

.field private final b:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lv2/b;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    const/16 v3, 0x3a

    const/16 v4, 0x2c

    invoke-direct {v0, v1, v2, v3, v4}, Lv2/b;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lv2/b;->c:Lv2/b;

    .line 2
    new-instance v0, Lv2/b;

    const-string v1, "REGISTRY"

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/16 v4, 0x3f

    invoke-direct {v0, v1, v2, v3, v4}, Lv2/b;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lv2/b;->d:Lv2/b;

    .line 3
    invoke-static {}, Lv2/b;->a()[Lv2/b;

    move-result-object v0

    sput-object v0, Lv2/b;->f:[Lv2/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-char p3, p0, Lv2/b;->a:C

    .line 3
    iput-char p4, p0, Lv2/b;->b:C

    return-void
.end method

.method private static synthetic a()[Lv2/b;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lv2/b;

    sget-object v1, Lv2/b;->c:Lv2/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lv2/b;->d:Lv2/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static b(C)Lv2/b;
    .locals 5

    .line 1
    invoke-static {}, Lv2/b;->values()[Lv2/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lv2/b;->h()C

    move-result v4

    if-eq v4, p0, :cond_1

    invoke-virtual {v3}, Lv2/b;->k()C

    move-result v4

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No enum corresponding to given code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/b;
    .locals 1

    const-class v0, Lv2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/b;

    return-object p0
.end method

.method public static values()[Lv2/b;
    .locals 1

    sget-object v0, Lv2/b;->f:[Lv2/b;

    invoke-virtual {v0}, [Lv2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/b;

    return-object v0
.end method


# virtual methods
.method h()C
    .locals 0

    iget-char p0, p0, Lv2/b;->a:C

    return p0
.end method

.method k()C
    .locals 0

    iget-char p0, p0, Lv2/b;->b:C

    return p0
.end method
