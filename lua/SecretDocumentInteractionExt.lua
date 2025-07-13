local on_load_complete_original = SecretDocumentInteractionExt.on_load_complete
function SecretDocumentInteractionExt:on_load_complete()
    if Network:is_server() and not LootFixer:IsUnitValid(self._unit) then
        self._unit:set_slot(0)
    else
        on_load_complete_original(self)
    end
end
