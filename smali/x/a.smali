.class public final enum Lx/a;
.super Ljava/lang/Enum;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx/a;

.field public static final enum b:Lx/a;

.field public static final enum c:Lx/a;

.field public static final enum d:Lx/a;

.field public static final enum f:Lx/a;

.field private static final synthetic g:[Lx/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lx/a;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/a;->a:Lx/a;

    .line 2
    new-instance v1, Lx/a;

    const-string v3, "REMOTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx/a;->b:Lx/a;

    .line 3
    new-instance v3, Lx/a;

    const-string v5, "DATA_DISK_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx/a;->c:Lx/a;

    .line 4
    new-instance v5, Lx/a;

    const-string v7, "RESOURCE_DISK_CACHE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lx/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lx/a;->d:Lx/a;

    .line 5
    new-instance v7, Lx/a;

    const-string v9, "MEMORY_CACHE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lx/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lx/a;->f:Lx/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lx/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lx/a;->g:[Lx/a;

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

.method public static valueOf(Ljava/lang/String;)Lx/a;
    .locals 1

    const-class v0, Lx/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx/a;

    return-object p0
.end method

.method public static values()[Lx/a;
    .locals 1

    sget-object v0, Lx/a;->g:[Lx/a;

    invoke-virtual {v0}, [Lx/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/a;

    return-object v0
.end method
