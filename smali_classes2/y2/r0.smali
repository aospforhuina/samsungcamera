.class public final enum Ly2/r0;
.super Ljava/lang/Enum;
.source "WifiPrefixType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/r0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly2/r0;

.field public static final enum b:Ly2/r0;

.field private static final synthetic c:[Ly2/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ly2/r0;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/r0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/r0;->a:Ly2/r0;

    .line 2
    new-instance v1, Ly2/r0;

    const-string v3, "DPP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/r0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/r0;->b:Ly2/r0;

    const/4 v3, 0x2

    new-array v3, v3, [Ly2/r0;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ly2/r0;->c:[Ly2/r0;

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

.method public static valueOf(Ljava/lang/String;)Ly2/r0;
    .locals 1

    const-class v0, Ly2/r0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/r0;

    return-object p0
.end method

.method public static values()[Ly2/r0;
    .locals 1

    sget-object v0, Ly2/r0;->c:[Ly2/r0;

    invoke-virtual {v0}, [Ly2/r0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/r0;

    return-object v0
.end method
