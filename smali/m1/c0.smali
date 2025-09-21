.class public final Lm1/c0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final a:Ly0/c;

.field public static final b:Ly0/c;

.field public static final c:Ly0/c;

.field public static final d:Ly0/c;

.field public static final e:Ly0/c;

.field public static final f:Ly0/c;

.field public static final g:Ly0/c;

.field public static final h:Ly0/c;

.field public static final i:Ly0/c;

.field public static final j:[Ly0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ly0/c;

    const-string v1, "name_ulr_private"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lm1/c0;->a:Ly0/c;

    new-instance v1, Ly0/c;

    const-string v4, "name_sleep_segment_request"

    .line 2
    invoke-direct {v1, v4, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lm1/c0;->b:Ly0/c;

    new-instance v4, Ly0/c;

    const-string v5, "get_last_activity_feature_id"

    .line 3
    invoke-direct {v4, v5, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lm1/c0;->c:Ly0/c;

    new-instance v5, Ly0/c;

    const-string v6, "support_context_feature_id"

    .line 4
    invoke-direct {v5, v6, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lm1/c0;->d:Ly0/c;

    new-instance v6, Ly0/c;

    const-string v7, "get_current_location"

    const-wide/16 v8, 0x2

    .line 5
    invoke-direct {v6, v7, v8, v9}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lm1/c0;->e:Ly0/c;

    new-instance v7, Ly0/c;

    const-string v8, "get_last_location_with_request"

    .line 6
    invoke-direct {v7, v8, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lm1/c0;->f:Ly0/c;

    new-instance v8, Ly0/c;

    const-string v9, "set_mock_mode_with_callback"

    .line 7
    invoke-direct {v8, v9, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lm1/c0;->g:Ly0/c;

    new-instance v9, Ly0/c;

    const-string v10, "set_mock_location_with_callback"

    .line 8
    invoke-direct {v9, v10, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v9, Lm1/c0;->h:Ly0/c;

    new-instance v10, Ly0/c;

    const-string v11, "inject_location_with_callback"

    .line 9
    invoke-direct {v10, v11, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v10, Lm1/c0;->i:Ly0/c;

    const/16 v2, 0x9

    new-array v2, v2, [Ly0/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v7, v2, v0

    const/4 v0, 0x6

    aput-object v8, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    sput-object v2, Lm1/c0;->j:[Ly0/c;

    return-void
.end method
