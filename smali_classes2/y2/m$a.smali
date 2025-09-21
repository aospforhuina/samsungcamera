.class public final enum Ly2/m$a;
.super Ljava/lang/Enum;
.source "EventStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly2/m$a;

.field public static final enum b:Ly2/m$a;

.field public static final enum c:Ly2/m$a;

.field private static final synthetic d:[Ly2/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ly2/m$a;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/m$a;->a:Ly2/m$a;

    .line 2
    new-instance v1, Ly2/m$a;

    const-string v3, "ANNIVERSARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/m$a;->b:Ly2/m$a;

    .line 3
    new-instance v3, Ly2/m$a;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly2/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly2/m$a;->c:Ly2/m$a;

    const/4 v5, 0x3

    new-array v5, v5, [Ly2/m$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Ly2/m$a;->d:[Ly2/m$a;

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

.method public static valueOf(Ljava/lang/String;)Ly2/m$a;
    .locals 1

    const-class v0, Ly2/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/m$a;

    return-object p0
.end method

.method public static values()[Ly2/m$a;
    .locals 1

    sget-object v0, Ly2/m$a;->d:[Ly2/m$a;

    invoke-virtual {v0}, [Ly2/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/m$a;

    return-object v0
.end method
