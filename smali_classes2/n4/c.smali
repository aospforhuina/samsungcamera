.class public final enum Ln4/c;
.super Ljava/lang/Enum;
.source "BoundaryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln4/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ln4/c;

.field public static final enum c:Ln4/c;

.field public static final enum d:Ln4/c;

.field public static final enum f:Ln4/c;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ln4/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[Ln4/c;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ln4/c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ln4/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln4/c;->b:Ln4/c;

    .line 2
    new-instance v1, Ln4/c;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ln4/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ln4/c;->c:Ln4/c;

    .line 3
    new-instance v3, Ln4/c;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ln4/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ln4/c;->d:Ln4/c;

    .line 4
    new-instance v5, Ln4/c;

    const-string v7, "OUTER_BLOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ln4/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ln4/c;->f:Ln4/c;

    const/4 v7, 0x4

    new-array v7, v7, [Ln4/c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ln4/c;->k:[Ln4/c;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    invoke-static {}, Ln4/c;->values()[Ln4/c;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 8
    invoke-virtual {v4}, Ln4/c;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ln4/c;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Ln4/c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln4/c;
    .locals 1

    const-class v0, Ln4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln4/c;

    return-object p0
.end method

.method public static values()[Ln4/c;
    .locals 1

    sget-object v0, Ln4/c;->k:[Ln4/c;

    invoke-virtual {v0}, [Ln4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln4/c;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 0

    iget p0, p0, Ln4/c;->a:I

    return p0
.end method
