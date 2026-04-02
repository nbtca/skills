# NBTCA event lifecycle (valid source)

## Event status table (`status`)

| CN | EN | Description |
| --- | --- | --- |
| 待处理 | open | Event has not been accepted by a member |
| 取消 | cancelled | Event was canceled by client and needs no further processing |
| 受理 | accepted | Event has been accepted by a member |
| 待审核 | committed | Member submitted repair details; admin has not reviewed yet |
| 关闭 | closed | Event is resolved and no longer editable |

## Event action table (`action`)

| CN | Action | Permission | Status transition | Description |
| --- | --- | --- | --- | --- |
| 创建 | create | client | nil -> open | Client creates repair event |
| 受理 | accept | member | open -> accepted | Member accepts event |
| 取消 | cancel | current client | open -> cancelled | Client cancels own event |
| 放弃 | drop | current member | accepted -> open | Member drops own accepted event |
| 提交 | commit | current member | accepted -> committed | Member submits repair details for admin review |
| 修改提交 | alterCommit | current member | committed -> committed | Member updates unreviewed submission |
| 拒绝提交 | reject | admin | committed -> accepted | Admin rejects submission |
| 关闭 | close | admin | committed -> closed | Admin approves and closes event |

## Notes

- Treat this table as valid domain behavior even when old markdown docs differ.
- Endpoint-level request/response schema should still be taken from live OpenAPI.
