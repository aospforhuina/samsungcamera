.class public final enum Lx5/d$e;
.super Ljava/lang/Enum;
.source "QuickSettingResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx5/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx5/d$e;

.field public static final enum b:Lx5/d$e;

.field public static final enum c:Lx5/d$e;

.field public static final enum d:Lx5/d$e;

.field private static final synthetic f:[Lx5/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lx5/d$e;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx5/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx5/d$e;->a:Lx5/d$e;

    .line 2
    new-instance v1, Lx5/d$e;

    const-string v3, "BOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx5/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx5/d$e;->b:Lx5/d$e;

    .line 3
    new-instance v3, Lx5/d$e;

    const-string v5, "FORMAT_VALUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx5/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx5/d$e;->c:Lx5/d$e;

    .line 4
    new-instance v5, Lx5/d$e;

    const-string v7, "FORMAT_VALUE_WITH_QUANTITY_STRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lx5/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lx5/d$e;->d:Lx5/d$e;

    const/4 v7, 0x4

    new-array v7, v7, [Lx5/d$e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lx5/d$e;->f:[Lx5/d$e;

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

.method public static valueOf(Ljava/lang/String;)Lx5/d$e;
    .locals 1

    const-class v0, Lx5/d$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx5/d$e;

    return-object p0
.end method

.method public static values()[Lx5/d$e;
    .locals 1

    sget-object v0, Lx5/d$e;->f:[Lx5/d$e;

    invoke-virtual {v0}, [Lx5/d$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx5/d$e;

    return-object v0
.end method
