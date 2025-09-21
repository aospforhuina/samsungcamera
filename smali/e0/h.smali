.class public interface abstract Le0/h;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Le0/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Le0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/h$a;

    invoke-direct {v0}, Le0/h$a;-><init>()V

    sput-object v0, Le0/h;->a:Le0/h;

    .line 2
    new-instance v0, Le0/j$a;

    invoke-direct {v0}, Le0/j$a;-><init>()V

    invoke-virtual {v0}, Le0/j$a;->a()Le0/j;

    move-result-object v0

    sput-object v0, Le0/h;->b:Le0/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
