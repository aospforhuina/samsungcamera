.class public final Lc/b;
.super Ljava/lang/Object;
.source "XMPDateTimeFactory.java"


# static fields
.field private static final a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lc/b;->a:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Ljava/util/Calendar;)Lc/a;
    .locals 1

    new-instance v0, Ld/g;

    invoke-direct {v0, p0}, Ld/g;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method
