.class public final enum Lu3/a;
.super Ljava/lang/Enum;
.source "AssistantVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu3/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lu3/a;

.field public static final enum c:Lu3/a;

.field public static final enum d:Lu3/a;

.field private static final synthetic f:[Lu3/a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lu3/a;

    const-string v1, "V1_0"

    const/4 v2, 0x0

    const v3, 0x5f5e100

    invoke-direct {v0, v1, v2, v3}, Lu3/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu3/a;->b:Lu3/a;

    .line 2
    new-instance v1, Lu3/a;

    const-string v3, "V1_1"

    const/4 v4, 0x1

    const v5, 0x68e7780

    invoke-direct {v1, v3, v4, v5}, Lu3/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/a;->c:Lu3/a;

    .line 3
    new-instance v3, Lu3/a;

    const-string v5, "MAX"

    const/4 v6, 0x2

    const v7, 0x7fffffff

    invoke-direct {v3, v5, v6, v7}, Lu3/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu3/a;->d:Lu3/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lu3/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lu3/a;->f:[Lu3/a;

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
    iput p3, p0, Lu3/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu3/a;
    .locals 1

    const-class v0, Lu3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu3/a;

    return-object p0
.end method

.method public static values()[Lu3/a;
    .locals 1

    sget-object v0, Lu3/a;->f:[Lu3/a;

    invoke-virtual {v0}, [Lu3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu3/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lu3/a;->a:I

    return p0
.end method
