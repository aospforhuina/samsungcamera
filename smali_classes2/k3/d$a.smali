.class public final Lk3/d$a;
.super Ljava/lang/Object;
.source "EntityType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lk3/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lk3/d;
    .locals 1

    const-string/jumbo p0, "typeId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x6cbea7a5

    if-eq p0, v0, :cond_3

    const v0, 0x5c24b9c

    if-eq p0, v0, :cond_1

    const v0, 0x65b3d6e

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "phone"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_1
    const-string p0, "email"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    sget-object p0, Lk3/d;->d:Lk3/d;

    goto :goto_1

    :cond_3
    const-string p0, "phone_e164"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 4
    :goto_0
    sget-object p0, Lk3/d;->c:Lk3/d;

    goto :goto_1

    .line 5
    :cond_4
    sget-object p0, Lk3/d;->f:Lk3/d;

    :goto_1
    return-object p0
.end method
