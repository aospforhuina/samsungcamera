.class public Lv4/j;
.super Ljava/lang/Object;
.source "SamsungAnalyticsHolder.java"


# static fields
.field private static a:Lv4/i;

.field private static b:Lv4/i;


# direct methods
.method public static a(Lv4/c;)Lv4/i;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lv4/c;->k()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lv4/j;->b:Lv4/i;

    goto :goto_0

    :cond_1
    sget-object p0, Lv4/j;->a:Lv4/i;

    :goto_0
    return-object p0
.end method

.method public static b(Lv4/i;Lv4/c;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lv4/c;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sput-object p0, Lv4/j;->b:Lv4/i;

    goto :goto_0

    .line 3
    :cond_1
    sput-object p0, Lv4/j;->a:Lv4/i;

    :goto_0
    return-void
.end method
