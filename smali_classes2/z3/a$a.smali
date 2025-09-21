.class public final enum Lz3/a$a;
.super Ljava/lang/Enum;
.source "FaceFeatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz3/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz3/a$a;

.field public static final enum b:Lz3/a$a;

.field public static final enum c:Lz3/a$a;

.field public static final enum d:Lz3/a$a;

.field public static final enum f:Lz3/a$a;

.field private static final synthetic g:[Lz3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lz3/a$a;

    const-string v1, "BOTH_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz3/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz3/a$a;->a:Lz3/a$a;

    .line 2
    new-instance v1, Lz3/a$a;

    const-string v3, "LEFT_WINK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz3/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz3/a$a;->b:Lz3/a$a;

    .line 3
    new-instance v3, Lz3/a$a;

    const-string v5, "RIGHT_WINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz3/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz3/a$a;->c:Lz3/a$a;

    .line 4
    new-instance v5, Lz3/a$a;

    const-string v7, "BOTH_BLINK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lz3/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lz3/a$a;->d:Lz3/a$a;

    .line 5
    new-instance v7, Lz3/a$a;

    const-string v9, "NO_STATUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lz3/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lz3/a$a;->f:Lz3/a$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lz3/a$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lz3/a$a;->g:[Lz3/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz3/a$a;
    .locals 1

    const-class v0, Lz3/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz3/a$a;

    return-object p0
.end method

.method public static values()[Lz3/a$a;
    .locals 1

    sget-object v0, Lz3/a$a;->g:[Lz3/a$a;

    invoke-virtual {v0}, [Lz3/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz3/a$a;

    return-object v0
.end method
